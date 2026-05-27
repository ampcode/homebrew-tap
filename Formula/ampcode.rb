class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779848613-gb445e5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779848613-gb445e5/amp-darwin-arm64"
      sha256 "24c24e3f301c8211125a332dded2db8c05e2704f998a1619d7b9cefaf2467fee"
    else
      url "https://static.ampcode.com/cli/0.0.1779848613-gb445e5/amp-darwin-x64"
      sha256 "907326da17af32efdc8c53016b1cb2962a7f83f81b85782261ec23604bd48a9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779848613-gb445e5/amp-linux-arm64"
      sha256 "3ab67d7adbc1d3cba2b2fa546c791c5f5ac2e2630a3c8a355ecbe00742010e5e"
    else
      url "https://static.ampcode.com/cli/0.0.1779848613-gb445e5/amp-linux-x64"
      sha256 "1152308092d28cf9f2fde3d1cce05b38f708be86115abf17037c3c0120e95f6f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
