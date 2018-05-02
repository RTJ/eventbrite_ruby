module EventbriteRuby
  class Category
    class << self

      # Returns a list of category as categories, including subcategories nested.
      def all(params = {})
        client.get("v3/categories/", params)
      end

      # Gets a category by ID as category.
      def find(params = {})
        client.get("v3/ategories/", params)
      end

      # Returns a list of subcategory as subcategories.
      def subcategories(params = {})
        client.get("v3/subcategories/", params)
      end

      # Gets a subcategory by ID as subcategory.
      def find_subcategory(params = {})
        client.get("v3/subcategories/", params)
      end

      private

      def client
        EventbriteRuby::Client.new
      end

    end
  end
end
