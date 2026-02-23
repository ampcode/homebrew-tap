class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771863250-g045394"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771863250-g045394/amp-darwin-arm64"
      sha256 "974cb2c0a08d24367647dfa2e4646a18722bdeb37ec132d84aec835e4ba9cd3a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771863250-g045394/amp-darwin-x64"
      sha256 "40ef41be11d3c1aaee033c1d14c914dcc0b479b32581cdac2b647f9d277b6dc4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771863250-g045394/amp-linux-arm64"
      sha256 "2e4dd90d9d0fb7a40fa4c0a5d9a3a857fab29cc8343d1c755b0dd5df620098c9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771863250-g045394/amp-linux-x64"
      sha256 "8450e4c8aa55ca147047290c9dc248e55d7ba12d72968f940829842314a6cbec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
