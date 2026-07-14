class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784031823-g5829be"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784031823-g5829be/amp-darwin-arm64"
      sha256 "ed0ed38199a78c4b661ff858737cfadd23771c9e10fcabc99dce2cec43412285"
    else
      url "https://static.ampcode.com/cli/0.0.1784031823-g5829be/amp-darwin-x64"
      sha256 "23c7e79465310e1264ab50640b51181bbbb6b7ebc7b7ae5c19ec2a17b1900012"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784031823-g5829be/amp-linux-arm64"
      sha256 "ce4461f6d9a49bc3f0216c68eb818400b73249653baaf3eedca5a0cf311d6124"
    else
      url "https://static.ampcode.com/cli/0.0.1784031823-g5829be/amp-linux-x64"
      sha256 "e3b28740265df4b4b98714101113bada7a62c2d7e03438f2a8af6f7628b55223"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
