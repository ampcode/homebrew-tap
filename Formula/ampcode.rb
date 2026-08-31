class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788191043-gcdd776"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788191043-gcdd776/amp-darwin-arm64"
      sha256 "c80eb2a8f5c8a2bb3a4004a4c7e1ef656eaefe0d41755e5511bb769b4f93f9ae"
    else
      url "https://static.ampcode.com/cli/0.0.1788191043-gcdd776/amp-darwin-x64"
      sha256 "0f0e75eefd7ded51424f7a35534fb94a7e8e6eeebd38ded93292481b07af121a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788191043-gcdd776/amp-linux-arm64"
      sha256 "c1b4464e82d64da782332d2a6a346a5dda2fa9ec85fae418eef0d7aa325e9686"
    else
      url "https://static.ampcode.com/cli/0.0.1788191043-gcdd776/amp-linux-x64"
      sha256 "5f253c956b7bb85647f6033f8ce21a40d780d911603ba25894d4f80cfdb554a7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
