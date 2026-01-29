class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769688231-g1d909c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769688231-g1d909c/amp-darwin-arm64"
      sha256 "9b34c4d05d0ed583fab87fa4c152b70c2bf03f3cd247e4dc37a5d19acc0d3c91"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769688231-g1d909c/amp-darwin-x64"
      sha256 "39da31ed3a518803f4d2fc9d59972e7e7ac7b8f917ca06127f679fc5691e8fb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769688231-g1d909c/amp-linux-arm64"
      sha256 "8191d40a8159c45715e49b592e98ca00b94e5de01bd2347fa4b8d101b3495968"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769688231-g1d909c/amp-linux-x64"
      sha256 "a19c81afae9b1f23cf0af5e6a81615bb2127daa95803539dac0997f7a847528d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
