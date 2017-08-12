# Encoding: utf-8

module SwaggerLint
  class Linter
    def initialize(swagger)
      @swagger = swagger
    end

    def check_definitions()
    end

    def check_paths()
      warns = []
      paths = @swagger["paths"]
      paths.each do |path_name, path_details|
        warns += check_path_name(path_name)
      end
      return warns
    end

    private

      def check_path_name(path_name)
        warns = []
        warns.push("Path must start with slash: #{path_name}") \
          unless path_name[0] == "/"
        return warns
      end
  end
end
