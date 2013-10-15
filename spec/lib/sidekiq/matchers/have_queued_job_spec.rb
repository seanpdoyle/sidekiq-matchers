require 'spec_helper'

describe :have_queued_job do
  subject(:worker) { Worker }

  before { worker.perform_async(1, "2", nil) }

  it { should have_queued_job 1, "2", nil }
end