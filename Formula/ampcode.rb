class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773830309-g77f7ad"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773830309-g77f7ad/amp-darwin-arm64"
      sha256 "771b45bb8acb85fa131aa3d1da117db36bb73df5db938871f1a262f6419c64d8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773830309-g77f7ad/amp-darwin-x64"
      sha256 "c5782eab4e4b7930b291fe6c3d5bbc38d7204f1d1ac20b56a4331789ee0a5b65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773830309-g77f7ad/amp-linux-arm64"
      sha256 "ca440d63c1d7880a514581ad1674afeaabab3963d36fc3b30c53731506a23781"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773830309-g77f7ad/amp-linux-x64"
      sha256 "5eae387b6cfb02b12001d345353902242dea51f5f3d2911a04afcd2d10607960"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
