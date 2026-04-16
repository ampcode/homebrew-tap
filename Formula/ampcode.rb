class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776331491-g58233f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776331491-g58233f/amp-darwin-arm64"
      sha256 "71e623a69bd20a9d61c93a8d9c4004a42aef105bd747ac1b089380196273407c"
    else
      url "https://static.ampcode.com/cli/0.0.1776331491-g58233f/amp-darwin-x64"
      sha256 "e40cf68e918206ad7eb0122aaa9108f563a5b6eb9dc390b28949fb7a00f149a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776331491-g58233f/amp-linux-arm64"
      sha256 "b988e53892f273b493cb79f3b601c5870ab88ab07ea42410168c8d94de76716b"
    else
      url "https://static.ampcode.com/cli/0.0.1776331491-g58233f/amp-linux-x64"
      sha256 "62b324b9d509bc1dea460721f7d6c0415411c861042d3a84f2094bf443da65f3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
