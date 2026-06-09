class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781033194-g800e4c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781033194-g800e4c/amp-darwin-arm64"
      sha256 "8622757808bc4994f99fafe92251ee0a755023296cfd0d24384b314d18544a86"
    else
      url "https://static.ampcode.com/cli/0.0.1781033194-g800e4c/amp-darwin-x64"
      sha256 "7cc4038c8e14da8ef213cacdb72a096195687b994829c5005df1a623a3b6faa0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781033194-g800e4c/amp-linux-arm64"
      sha256 "7cede02e80d9e0cbb9ea6717c0a7fe590db7bae8e0f17466ca9dbd9e81b287cf"
    else
      url "https://static.ampcode.com/cli/0.0.1781033194-g800e4c/amp-linux-x64"
      sha256 "9c363ec92633ea6206819653e10da12b8c62d28217da7fa2714b7902558147d0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
