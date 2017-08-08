require 'spec_helper'

describe 'translate' do
  it { is_expected.not_to eq nil }
  it { is_expected.to run.with_params('test string') }
  it { is_expected.to run.with_params(123).and_raise_error(ArgumentError) }
  it { is_expected.to run.and_raise_error(ArgumentError) }
end
