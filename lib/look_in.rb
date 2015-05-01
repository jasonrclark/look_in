require "look_in/version"

Module.module_eval do
  def look_in(*constants)
    @look_in ||= []
    @look_in.concat(constants)

    if !self.respond_to?(:const_missing_without_look_in)
      class << self
        alias_method :const_missing_without_look_in, :const_missing

        def const_missing(name)
          found_in = @look_in.find { |look| look.const_defined?(name) }
          return found_in.const_get(name) if found_in
          return const_missing_without_look_in(name)
        end
      end
    end
  end
end
