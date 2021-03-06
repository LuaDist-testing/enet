-- This file was automatically generated for the LuaDist project.

package = "enet"
version = "1.2-1"

-- LuaDist source
source = {
  tag = "1.2-1",
  url = "git://github.com/LuaDist-testing/enet.git"
}
-- Original source
-- source = {
--   url = "git://github.com/leafo/lua-enet.git",
--   branch = "v1.2"
-- }

description = {
  summary = "A library for doing network communication in Lua",
  detailed = [[
    Binding to ENet, network communication layer on top of UDP.
  ]],
  homepage = "http://leafo.net/lua-enet",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

external_dependencies = {
  ENET = {
    header = "enet/enet.h"
  }
}

build = {
  type = "builtin",
  modules = {
    enet = {
      sources = {"enet.c"},
      libraries = {"enet"},
      incdirs = {"$(ENET_INCDIR)"},
      libdirs = {"$(ENET_LIBDIR)"}
    }
  }
}