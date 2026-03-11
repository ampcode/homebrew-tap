class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773245606-g310953"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773245606-g310953/amp-darwin-arm64"
      sha256 "9bb18b3008a7d505b7b27e8d48f28a5b3e4826d14bd4c32285d1f179ee093804"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773245606-g310953/amp-darwin-x64"
      sha256 "64de1dbab32084b9bf8cd6835ff1199062887c66b995bb339860c4a066552465"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773245606-g310953/amp-linux-arm64"
      sha256 "53da704554af2e6f6f292962ad0664591d7a1bdc67fcf2a93d26fcd7302dfa09"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773245606-g310953/amp-linux-x64"
      sha256 "72c4a2d88ff90a550169f18224397e793731862bb111600e02fb23acee55de37"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
