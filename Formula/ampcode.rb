class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777983419-g88aeb8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777983419-g88aeb8/amp-darwin-arm64"
      sha256 "f2fc0a2665871b50a0a7d5521aa8662494ee290d25ff6cd858af63d919275871"
    else
      url "https://static.ampcode.com/cli/0.0.1777983419-g88aeb8/amp-darwin-x64"
      sha256 "4edb40a594121f1a737bc1c0315f99717b47abc71eca5ca0120425040ec04244"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777983419-g88aeb8/amp-linux-arm64"
      sha256 "b44967289c7bd410eaa6e1a6e2c1d7ee52153a3ae17c5611299723d7d591c1e8"
    else
      url "https://static.ampcode.com/cli/0.0.1777983419-g88aeb8/amp-linux-x64"
      sha256 "db1a87e791201baff8a9df4efded71b53f738fb58d15f4924e5b1b6b774d0142"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
