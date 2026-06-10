class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781060853-gf8bfe7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781060853-gf8bfe7/amp-darwin-arm64"
      sha256 "7bbf7dee5139eaba8d134de889a86e732603d42a04d07ddcf9d547e0f16202f9"
    else
      url "https://static.ampcode.com/cli/0.0.1781060853-gf8bfe7/amp-darwin-x64"
      sha256 "84e23b5608dec7018dec0a69d0311ae97ed72c03fdbb6f0676177585b3c48f94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781060853-gf8bfe7/amp-linux-arm64"
      sha256 "fc4e4e91d7f20b9c1636a7ca86403f1958632d71c2bd46d15f59c067badc5500"
    else
      url "https://static.ampcode.com/cli/0.0.1781060853-gf8bfe7/amp-linux-x64"
      sha256 "aa69aac801331e21d31521bca05ba5214fe83c54a8834ac994934450d26598e9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
