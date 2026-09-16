class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789560064-g5dae78"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789560064-g5dae78/amp-darwin-arm64"
      sha256 "23607a1ba8ebf5fa79fc7a50d6db0b9f65aa4389ca4f387d5bd776ac84f6471d"
    else
      url "https://static.ampcode.com/cli/0.0.1789560064-g5dae78/amp-darwin-x64"
      sha256 "7f4e035c7ac84a1f3313ac100c33a93ea5be8548d0a57be761232eeda3369b30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789560064-g5dae78/amp-linux-arm64"
      sha256 "2c85a06166cc28d9f1768e5060fe02cdf901d26350e7d05182a755a9e4f72e75"
    else
      url "https://static.ampcode.com/cli/0.0.1789560064-g5dae78/amp-linux-x64"
      sha256 "0b1bbaba8d1a42d7fced45e79f8261719ceea3f10e58f563665fe63900bad623"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
