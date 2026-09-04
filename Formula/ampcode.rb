class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788555400-g0eae53"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788555400-g0eae53/amp-darwin-arm64"
      sha256 "e97b68fd4e5f239c3402df8269a1c045394c6b690538fca1ed748bec62038b33"
    else
      url "https://static.ampcode.com/cli/0.0.1788555400-g0eae53/amp-darwin-x64"
      sha256 "11030afd66ea788f97f3db78d516d3cd5f7fab2a88815027d162d8a2ab01f352"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788555400-g0eae53/amp-linux-arm64"
      sha256 "8bf618a13b4125c7c69138d6377c201895b09b3d6d5a1f9092e574f2e92b4a68"
    else
      url "https://static.ampcode.com/cli/0.0.1788555400-g0eae53/amp-linux-x64"
      sha256 "d4173da4705140c306c8bc751ab56833e362065628b261ed1d05f12bc2f9b692"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
