class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786263204-g6fb7a1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786263204-g6fb7a1/amp-darwin-arm64"
      sha256 "d618a06c786d8e0be0e77cbe6d9165e569fad164443a4cd98c36c699426fd87e"
    else
      url "https://static.ampcode.com/cli/0.0.1786263204-g6fb7a1/amp-darwin-x64"
      sha256 "f0c32fb6cd46a9b2dbd1813f61ea6a2ec5cc10300a181bedd8853b03738fb3b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786263204-g6fb7a1/amp-linux-arm64"
      sha256 "a1db22d0b40e9f919c2bd7a5fb4f775a4219836da38cff7a7d47c1192550e599"
    else
      url "https://static.ampcode.com/cli/0.0.1786263204-g6fb7a1/amp-linux-x64"
      sha256 "429b81256488e29717de696633ddf604a88b3c1d1667adba54f58cab55e561de"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
