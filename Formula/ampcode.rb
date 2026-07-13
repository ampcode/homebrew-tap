class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783961169-ga39605"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783961169-ga39605/amp-darwin-arm64"
      sha256 "917ef8afb17daadae607371c491b741416286d691e21606b79042d47504b113e"
    else
      url "https://static.ampcode.com/cli/0.0.1783961169-ga39605/amp-darwin-x64"
      sha256 "702a0174a20a577d61548b5b7eba07d5b1c9b36e8a0f84de2ee7d4d0720bd0a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783961169-ga39605/amp-linux-arm64"
      sha256 "f48d8e90ebdd92ff2816213b5656d47e056cc918bfd5b45522f17281c0212b57"
    else
      url "https://static.ampcode.com/cli/0.0.1783961169-ga39605/amp-linux-x64"
      sha256 "d9d032e259ad955246852328a024163b556f9271f028624607dd7c1ff013ee7b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
