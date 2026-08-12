class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786551414-g7b8b6b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786551414-g7b8b6b/amp-darwin-arm64"
      sha256 "16b31cb50b3ffefc50e3f8dc2961b208c7e16912d3be9672f9c9aeadc0c7185a"
    else
      url "https://static.ampcode.com/cli/0.0.1786551414-g7b8b6b/amp-darwin-x64"
      sha256 "e010d1ea3625437517b7b7038d284ee6cde828acfd188af152c1430974d72e59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786551414-g7b8b6b/amp-linux-arm64"
      sha256 "61e83178656a4fde0adb3de000852e9a6671772b8adc73863d93d05d9984d74b"
    else
      url "https://static.ampcode.com/cli/0.0.1786551414-g7b8b6b/amp-linux-x64"
      sha256 "adec5f210c6a0151e1b231e97f10a0d03a241cbbfe0bb83e1b5049ea3745360c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
