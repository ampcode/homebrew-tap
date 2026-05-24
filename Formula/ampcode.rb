class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779612413-g6d0650"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779612413-g6d0650/amp-darwin-arm64"
      sha256 "df58ee2b3e87e33de3df08627e17577161f4d46155cc8d8f3f4e99dfa704adb5"
    else
      url "https://static.ampcode.com/cli/0.0.1779612413-g6d0650/amp-darwin-x64"
      sha256 "54f0178e038583fb200a85c6eb44aa9f2b4b45282cb8a0d5efda7bb6e8d51516"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779612413-g6d0650/amp-linux-arm64"
      sha256 "f1607d2060c8dc28af1da134a5bd8745c62da29ffb0a85196bb49c88d6f5a0f8"
    else
      url "https://static.ampcode.com/cli/0.0.1779612413-g6d0650/amp-linux-x64"
      sha256 "9614eebf6c12afdcdef3728aa7c68a11541312a292a7a33d193da335466f8352"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
