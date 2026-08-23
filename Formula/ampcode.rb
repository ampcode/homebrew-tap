class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787472205-g6b050c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787472205-g6b050c/amp-darwin-arm64"
      sha256 "3251bc486db6e96ec040f5482f9da764eabf544796f0fa222a0f6f1c4249cf93"
    else
      url "https://static.ampcode.com/cli/0.0.1787472205-g6b050c/amp-darwin-x64"
      sha256 "6fc92561db34389100e32f2691a98d6e3939946de6359b5c7df7e70479f582c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787472205-g6b050c/amp-linux-arm64"
      sha256 "83c03c861d862bac9851d7c74d2c7500c47d255bc69fb0473d70300a6bb8dba8"
    else
      url "https://static.ampcode.com/cli/0.0.1787472205-g6b050c/amp-linux-x64"
      sha256 "fa8091f49b30ecea0bb81a6a7b0d3cfca28fabd3a5590fccac952b7ede67011d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
