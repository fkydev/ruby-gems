#
# Copyright 2023- Furkan Kaya
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "fluent/plugin/filter"

module Fluent
  module Plugin
    class JllogFilter < Fluent::Plugin::Filter
      Fluent::Plugin.register_filter("jllog", self)

      def filter(tag, time, record)
        if record.has_key?("context")
          record["context"].each { |key, value| record.store(key, value) }
          record.delete("context")
        end
        record
      end
    end
  end
end
