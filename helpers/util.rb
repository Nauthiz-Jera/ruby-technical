# frozen_string_literal: true
# typed: true

require 'sorbet-runtime'

class Util
    extend T::Sig

    sig { params(obj:T::Hash[String, BasicObject], key: String, replacement_key: String).returns(T::Hash[String, BasicObject])}
    def self.rename_property(obj, key, replacement_key)
        clone = Marshal.load(Marshal.dump(obj));
        clone[replacement_key] = clone[key]
        clone.delete(key)
        return clone
    end
end