require 'swagger_lint/linter'
require 'swagger_lint/version'
require 'config_loader'

module SwaggerLint
  class SwaggerLinter
    def validate(json)
      @linter = SwaggerLint::Linter.new(json)
      warns = @linter.check_all

      puts "Warnings: #{warns.size}"
      warns.each { |warn| puts warn }
    end
  end
end
