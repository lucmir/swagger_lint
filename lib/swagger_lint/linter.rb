# Encoding: utf-8

module SwaggerLint
  class Linter
    def initialize(swagger)
      @swagger = swagger
    end

    def check_all
      check_paths
    end

    def check_paths
      warns = []
      paths = @swagger['paths']
      paths.keys.each do |path_name|
        warns += check_path_name(path_name)
      end
      warns
    end

    private

    def check_path_name(path_name)
      warns = []
      prefix = "[ #{path_name} ]"
      warns.push("#{prefix} Path must start with slash") \
        unless path_name[0] == '/'
      path_without_ids = path_name.sub(/{.*}/, '')
      warns.push("#{prefix} Avoid upper case letters") \
        if /[[:upper:]]/.match?(path_without_ids)
      warns
    end
  end
end
