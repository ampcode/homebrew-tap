class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789257698-g25321c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789257698-g25321c/amp-darwin-arm64"
      sha256 "7eec5fc3fbf3bc0c06692322c4285c2dc21ab25a55f539694f40e6bf984e7e1b"
    else
      url "https://static.ampcode.com/cli/0.0.1789257698-g25321c/amp-darwin-x64"
      sha256 "e1549c9c0e6ae9db196d534ccdfaee555a5cebd427acba65239699792c0db6d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789257698-g25321c/amp-linux-arm64"
      sha256 "f889c1b3a3e0242a51adf68633cd17d8f2e098fa4517f4ccd09bcdd2657f4072"
    else
      url "https://static.ampcode.com/cli/0.0.1789257698-g25321c/amp-linux-x64"
      sha256 "bf4a26333c26b2f1ae78ddc2a4a1c576c1eebca8f1ffd7a6aea32b54022c8bfb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
