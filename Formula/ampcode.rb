class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775866026-gd3abf3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775866026-gd3abf3/amp-darwin-arm64"
      sha256 "342860e794c71c7b8a40c494de66e9d66685879f4740f81eb5e36e2492ad513a"
    else
      url "https://static.ampcode.com/cli/0.0.1775866026-gd3abf3/amp-darwin-x64"
      sha256 "abcaf62799fb2a475b25c35daee5eea76bd4d392a151d57f0e0bdf4ef256bc35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775866026-gd3abf3/amp-linux-arm64"
      sha256 "ca82f93c811287c29fb4f6a2e45a2549a820c5f07a20c32e8c89087080905d2d"
    else
      url "https://static.ampcode.com/cli/0.0.1775866026-gd3abf3/amp-linux-x64"
      sha256 "cb80cfa1cc1664afcc99738cacd6653293b6b2ac24bbbc1ba81f46b9e47b91f4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
