# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExampleJob, type: :job do
  include ActiveJob::TestHelper
  it 'should queue a job' do
    assert_enqueued_jobs 0
    ExampleJob.perform_later(10)
    expect(ExampleJob).to have_been_enqueued
    ExampleJob.perform_later(1)
    assert_enqueued_jobs 2
  end

  it 'should work' do
    ExampleJob.perform_now(1)
  end
end
