# work_surfer

An experiemental unofficial Ruby client for the
[WorkWave.com Route Manager API](https://wwrm.workwave.com/api).

## Usage

### Client Options

If not explicitly passed a client, all methods will fall back to
`Client.default_client`. You can set that default client directly or
have it auto-constructed from a set of default options:

#### api_key

**Has no default, must be provided.**

Your WorkWave API key. You can e.g. get this key from the [WorkWave
Route Manager](https://wwrm.workwave.com/) web application by clicking
on your name in the top right corner, then clicking on "Account
Settings" and finally copying the "API Key" from the modal dialog.

#### connection_builder

**Optional**

A Faraday connection builder. Defaults to:

```ruby
->(builder) {
  builder.adapter   Faraday.default_adapter
  builder.request   :url_encoded
  builder.response  :parse_json
}
```

#### connection_options

**Optional**

A `Hash` of options passed as the second parameter to
`Faraday::Connection.new`.

#### default_headers

**Optional**

Defaults to:

```ruby
{
  "X-WorkWave-Key": proc { api_key },
}
```

As demonstrated, you can use `Proc`s as values, which will be evaluated
in the context of the `Client` instance.

When you overwrite this, take care to include the `X-WorkWave-Key`
header.

#### default_territory_id

**Optional**

If you wish to execute all your API calls against a single territory,
setting this value will save you some keystrokes.

#### url_base

**Optional**

Defaults to `"https://wwrm.workwave.com/api/v1/"` and should probably
not be overwritten in most cases.

### APIs

- `Territories.list()`
- `ApprovedPlans.get(route_id, territory_id: WorkSurfer::Client.default_territory_id)`
- `ApprovedPlans.list(date: "today", territory_id: WorkSurfer::Client.default_territory_id)`
- `TimeOfArrival.get(route_id, territory_id: WorkSurfer::Client.default_territory_id)`
- `TimeOfArrival.list(date: nil, territory_id: WorkSurfer::Client.default_territory_id, vehicle_id: nil)`

### Response format

All responses are returned as a `Hash` with all keys and values exactly
as described in the [API Reference
Documentation](https://wwrm.workwave.com/api/#time-of-arrival-api).

## Compatibility

So far, this has only been verified to work on Ruby (MRI) 2.3.1. I have
no plans to support any Ruby versions below 2.3.

## Status

This library is in a very early stage and e.g. does not yet feature any
automated tests, nor does it significantly transform any API responses,
nor does it in fact support any API calls other than a few very basic
read-only calls to a subset of APIs.

At the moment, The following APIs are supported:

### [Approved Plans](https://wwrm.workwave.com/api/#approved-plans-api)

- List Approved Routes
- Get Approved Route

### [Territories](https://wwrm.workwave.com/api/#territories-api)

Fully supported.

### [Time Of Arrival](https://wwrm.workwave.com/api/#time-of-arrival-api)

- List Current Routes
- Get Current Route
