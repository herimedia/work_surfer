# work_surfer Changelog

An experiemental unofficial Ruby client for the
[WorkWave.com Route Manager API](https://wwrm.workwave.com/api).

## v0

### v0.0.2.2 (2016-10-26)

- Fix date parsing bug.

### v0.0.2.1 (2016-10-26)

Internal changes only.

### v0.0.2 (2016-10-26)

- Removed implicit dependency on ActiveSupport.
- Auto-require Faraday.
- Fixed reference to Faraday Middleware's JSON parser.
- Added a Gemfile for bundler-friendliness.
- Auto-parse dates from either date-like Strings, Time-like or Date-like
  objects.
