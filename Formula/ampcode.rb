class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775045475-g3ef544"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775045475-g3ef544/amp-darwin-arm64"
      sha256 "1b3659fa2bdc081888d93fe765b940ccbd7eb6536e7f3efd36227cf09faa5302"
    else
      url "https://static.ampcode.com/cli/0.0.1775045475-g3ef544/amp-darwin-x64"
      sha256 "a4ffc1b44253465a03b16554e3fd97dd523ba5420b43ef698ebc5c1b03c346fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775045475-g3ef544/amp-linux-arm64"
      sha256 "39d72003c100f84e310f8b948cb8557b04de6150ca25a558483a974d941606fa"
    else
      url "https://static.ampcode.com/cli/0.0.1775045475-g3ef544/amp-linux-x64"
      sha256 "7c9750c1b44d621a1eca7aea010c9bc1edfae915ee533e474f9420f902b87bc7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
