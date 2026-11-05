class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793865647-gf45889"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793865647-gf45889/amp-darwin-arm64"
      sha256 "c1cbdd354bcc38caa6684999f746db0c87deead82783d5218b18bb65246b600e"
    else
      url "https://static.ampcode.com/cli/0.0.1793865647-gf45889/amp-darwin-x64"
      sha256 "8e565dc96c2ffda1239564939e7d8beb276f4b232b17f4318bafd005fdfc3bde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793865647-gf45889/amp-linux-arm64"
      sha256 "4812542f676ba75d0fa5713542f5bd102932d2f630e11837bcd31a2f8fe39433"
    else
      url "https://static.ampcode.com/cli/0.0.1793865647-gf45889/amp-linux-x64"
      sha256 "40db995714124d25d4bc4a290889be5c8b45403b85c6672736c61c8eacd42578"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
