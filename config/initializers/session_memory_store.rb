# Port of old CGI::Session::MemoryStore to Rails 2.3
module ActionController
  module Session
    # In-memory session storage class.
    #
    # Implements session storage as a global in-memory hash.  Session
    # data will only persist for as long as the ruby interpreter 
    # instance does.
    class MemoryStore < AbstractStore
      GLOBAL_HASH_TABLE = {} #:nodoc:

      private
        def get_session(env, sid)
          sid ||= generate_sid
          session = GLOBAL_HASH_TABLE[sid] || {}
          session = AbstractStore::SessionHash.new(self, env).merge(session)
          [sid, session]
        end

        def set_session(env, sid, session_data)
          GLOBAL_HASH_TABLE[sid] = session_data
          return true
        end
    end
  end
end unless RAILS_GEM_VERSION =~ /^([01]\.|2\.[012]\.)/