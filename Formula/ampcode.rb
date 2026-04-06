class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775477433-g5ea8dd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775477433-g5ea8dd/amp-darwin-arm64"
      sha256 "5f46fc1ae8267e06061a773d24b710691d728577efd83291809bbe9b6c1c2e04"
    else
      url "https://static.ampcode.com/cli/0.0.1775477433-g5ea8dd/amp-darwin-x64"
      sha256 "a96c024a6620a70e1520d8acc3b4023017fbb4b239ead1766493593fcae7cc51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775477433-g5ea8dd/amp-linux-arm64"
      sha256 "46eaed42e3cbd762101ff3188ca42d310bab851ac71e84d3c90b93f5fdc79602"
    else
      url "https://static.ampcode.com/cli/0.0.1775477433-g5ea8dd/amp-linux-x64"
      sha256 "4966f7e76ea1b9e5302581bc26683d9d900f7845b1a0d4b28eab30d921e37bca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
