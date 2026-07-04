class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783167646-gbbd2c7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783167646-gbbd2c7/amp-darwin-arm64"
      sha256 "b62a5fe4fc2835fafe0890ca293e466bba7f86c7ace0dcfb070d312d567ce2a0"
    else
      url "https://static.ampcode.com/cli/0.0.1783167646-gbbd2c7/amp-darwin-x64"
      sha256 "68a59e3909c50aee0262a0b56872380efc20ffef7608cb69f9cd7ca83595cf9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783167646-gbbd2c7/amp-linux-arm64"
      sha256 "35aaa857f6b57134179948ab3ba1ce75dfb46b3d808171f8536d0976b8098d1f"
    else
      url "https://static.ampcode.com/cli/0.0.1783167646-gbbd2c7/amp-linux-x64"
      sha256 "8e82954e30b571d66436ca0716e1cfc4d6c8ecf8ae05e94aa3cb23f8197db2c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
