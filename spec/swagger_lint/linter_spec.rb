require 'spec_helper'

describe SwaggerLint::Linter do
  describe "#check_paths" do
    it "should warn if a path does not start with slash" do
      swagger = { "paths" => { "/users" => {}, "pets" => {} } }
      linter = described_class.new(swagger)
      warns = linter.check_paths
      expect(warns.size).to eq(1)
      expect(warns[0]).to eq("[ pets ] Path must start with slash")
    end
  end
end
