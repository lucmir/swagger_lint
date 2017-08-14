require 'swagger_lint/linter'
require 'swagger_lint/version'

module SwaggerLint
  class SwaggerLinter
    def validate(json)
      warns = []
      @linter = SwaggerLint::Linter.new(json)
      warns += @linter.check_paths

      puts "Warnings: #{warns.size}"
      warns.each { |warn| puts warn }
    end
  end
end
