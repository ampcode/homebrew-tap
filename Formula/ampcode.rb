class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787529709-gc0f154"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787529709-gc0f154/amp-darwin-arm64"
      sha256 "df3b08e799abcc5447531ecd9dff8304ce7093874efb27ccb2c381a10c518177"
    else
      url "https://static.ampcode.com/cli/0.0.1787529709-gc0f154/amp-darwin-x64"
      sha256 "51981727c14554d3a1627aec196d48598d3526dea1aca68460cf8ac393eb3d30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787529709-gc0f154/amp-linux-arm64"
      sha256 "f74ea3021dd959f38fd61288206bcef55e12851e6cb643b416e7ca32324199cf"
    else
      url "https://static.ampcode.com/cli/0.0.1787529709-gc0f154/amp-linux-x64"
      sha256 "35458cdd2418490bafccedc85007e9a0081229fc05867f3165b9dce95a2c2ba6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
