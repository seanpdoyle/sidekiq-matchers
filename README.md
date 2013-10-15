# Sidekiq-Matchers

`RSpec` Matchers for `Sidekiq`

**EXTRACTED FROM** [@subelsky](https://github.com/subelsky/subelsky_power_tools/blob/67eca5f60008f6740cdc25ccb4d4e843e9234d11/lib/subelsky_power_tools/sidekiq_assertions.rb)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sidekiq-matchers', github: 'seanpdoyle/sidekiq-matchers'
```

And then execute:

```console
$ bundle
```

## Usage

First, require `sidekiq/matchers` in your `spec_helper.rb`

```ruby
# spec/spec_helper.rb
#...
require 'sidekiq/matchers'
# ...
```

Then, in your examples

```ruby
describe "a method" do
  # ...
  it "enqueues a job on the XXXWorker" do
    expect(XXXWorker).to have_queued_job 1, "two", 3
  end

  it "enqueues a job a week from now" do
    expect(XXXWorker).to have_queued_job_at 7.days.from_now, 1, "two", 3
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
