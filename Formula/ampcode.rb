class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779581864-g6cae00"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779581864-g6cae00/amp-darwin-arm64"
      sha256 "11e3b924059636bd97b29c3fb47974389fadf38c3a7fa075b62a9b70f20afb2d"
    else
      url "https://static.ampcode.com/cli/0.0.1779581864-g6cae00/amp-darwin-x64"
      sha256 "63f8ad7f8a86c46690d7bc446879530a41b18c0ed8da81003e87c1eccc291caa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779581864-g6cae00/amp-linux-arm64"
      sha256 "680855a8f25afc116d3d3c0dc56f868971192bb8be03aa51eddda976ee9634f2"
    else
      url "https://static.ampcode.com/cli/0.0.1779581864-g6cae00/amp-linux-x64"
      sha256 "f5728107e9e7471976addb61bf16db0f5d9ec6d55d6c692b584ebae777eceacc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
