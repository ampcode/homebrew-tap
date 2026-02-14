class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771084124-g05a15e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771084124-g05a15e/amp-darwin-arm64"
      sha256 "00a41a6e75414971e39656acaa96a600e830dce7f653099592399723fee482ac"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771084124-g05a15e/amp-darwin-x64"
      sha256 "06896d254f309ab97824d8fef1ac0328ff486de15d90f36460f7ef375d5efb08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771084124-g05a15e/amp-linux-arm64"
      sha256 "944816fecc35b3169c5e69123f0862937b19c8d3a67ac71119c3208289457a19"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771084124-g05a15e/amp-linux-x64"
      sha256 "0615124be3ccabf511d057d72e4310eab3f3690d87dfb295194f3a977e2004d3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
