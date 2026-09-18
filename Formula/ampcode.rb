class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789704050-g778045"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789704050-g778045/amp-darwin-arm64"
      sha256 "111acbc52f9f9e1e7310b227b6b9e6235ec35783bf7cfb132f7e34d11c3f4367"
    else
      url "https://static.ampcode.com/cli/0.0.1789704050-g778045/amp-darwin-x64"
      sha256 "531c74cfcf3c3970dc6520ff8fabfe42b36d844252ae0a1fe806abdc813ea9a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789704050-g778045/amp-linux-arm64"
      sha256 "1814dfb13880af2400bee0fc11807597f59664a1f6d725ab57960a330a009389"
    else
      url "https://static.ampcode.com/cli/0.0.1789704050-g778045/amp-linux-x64"
      sha256 "210677db966a0568353c13e62fae3111212d40531ea51a66f726466d09b181ec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
