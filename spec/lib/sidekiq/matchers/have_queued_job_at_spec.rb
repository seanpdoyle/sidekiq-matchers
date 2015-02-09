require "spec_helper"

describe :have_queued_job_at do
  subject(:worker) { Worker }

  let(:now) { Time.now }

  before { worker.perform_at(now, 1, "2", nil) }

  it { should have_queued_job_at now, 1, "2", nil }
end
