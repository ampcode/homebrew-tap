class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789876833-g353ee7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789876833-g353ee7/amp-darwin-arm64"
      sha256 "db59ac39f56cabe2b21f40987cf2c26079119f6bc194b37694f1f07964cc60da"
    else
      url "https://static.ampcode.com/cli/0.0.1789876833-g353ee7/amp-darwin-x64"
      sha256 "42b1534576ff1b3ee01d9841f1f7e94c6091094880226f5f8d95c4b407e28831"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789876833-g353ee7/amp-linux-arm64"
      sha256 "7679f6f721a9e9a57f763ff3ea8c2d1f3dee4e5de280d24cfc57b05eb7778917"
    else
      url "https://static.ampcode.com/cli/0.0.1789876833-g353ee7/amp-linux-x64"
      sha256 "49f653e2a163275926c0bb14bd1e3ab231929fb46eedb5485fc3d5efaf37de16"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
