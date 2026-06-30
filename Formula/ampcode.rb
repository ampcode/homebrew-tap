class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782832626-gf03bb9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782832626-gf03bb9/amp-darwin-arm64"
      sha256 "01ea34be374d8c65310b768a67ac3bafcb9bc982ab9fc9cf2b1a6a1dd28df295"
    else
      url "https://static.ampcode.com/cli/0.0.1782832626-gf03bb9/amp-darwin-x64"
      sha256 "9d0704320257743890afbf7ac5fbbfac90e6ac0860a52f21f17dfec0a949b4d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782832626-gf03bb9/amp-linux-arm64"
      sha256 "cb043832b98451397883e90cf5eb55c57e610a5880ae138473ea53337adb8964"
    else
      url "https://static.ampcode.com/cli/0.0.1782832626-gf03bb9/amp-linux-x64"
      sha256 "e54864a7cdda198a8044988c2c4c2617e3ae92828293209323a073d34c05f12f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
