class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783858464-g331f27"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783858464-g331f27/amp-darwin-arm64"
      sha256 "d756ec58cc6ca9e7eac4e5940e8c9eaf3e97d317b4734a06eb43846e26dd8ee7"
    else
      url "https://static.ampcode.com/cli/0.0.1783858464-g331f27/amp-darwin-x64"
      sha256 "d9d617213999ca1d54a83e64b7dffc19c75490047b51533ad27e39c49b557495"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783858464-g331f27/amp-linux-arm64"
      sha256 "3c58512a693a7e95e6ffb28857096c54cea1942a75d30fa258e1d41025d43d91"
    else
      url "https://static.ampcode.com/cli/0.0.1783858464-g331f27/amp-linux-x64"
      sha256 "13f0b5d37f842144225c0e293bf11448697d803ce03f933d333cc485bf1134e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
