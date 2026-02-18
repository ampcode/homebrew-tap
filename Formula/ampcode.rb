class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771416360-gd20eb6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771416360-gd20eb6/amp-darwin-arm64"
      sha256 "79261c0748c058e6c086238eb223faf7539a8641ca22ebea11fdb1c824df7451"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771416360-gd20eb6/amp-darwin-x64"
      sha256 "47068ee1a2735d64fe9448313f62a92de270b149cc011003cfee86bd075db34a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771416360-gd20eb6/amp-linux-arm64"
      sha256 "e35e712e3011fef03903146321d730dcaa915f1f708876c1a6ba44ad6728db2d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771416360-gd20eb6/amp-linux-x64"
      sha256 "b5861de6cc46b5c19f782c6f951bbb5d9d4f0b59671e67c5211759617e936ce6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
