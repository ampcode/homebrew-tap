class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784710168-g0b84dc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784710168-g0b84dc/amp-darwin-arm64"
      sha256 "c07a1572def9360e0be49bfce7d6b845349b36f186b917ceb4296f8be92f5bd3"
    else
      url "https://static.ampcode.com/cli/0.0.1784710168-g0b84dc/amp-darwin-x64"
      sha256 "4629392aedd421e7f88e757a4eb920f6324bc3762cf783163425ed36a654169f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784710168-g0b84dc/amp-linux-arm64"
      sha256 "c184f40d0af39f61e6be91a60dc30fc9e1376b3fd9e62b25dc9285b176441e88"
    else
      url "https://static.ampcode.com/cli/0.0.1784710168-g0b84dc/amp-linux-x64"
      sha256 "2fc2421f6d4e913bdda956a31df38ae6fbfa3348c472b8f9b8cd03feed88440e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
