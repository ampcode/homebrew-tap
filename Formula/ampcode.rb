class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791590492-ge25e83"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791590492-ge25e83/amp-darwin-arm64"
      sha256 "712bc44b20b38b8c69c3dc16f7d0ba72c3997d3dd39f744a5bb6e011d1391f06"
    else
      url "https://static.ampcode.com/cli/0.0.1791590492-ge25e83/amp-darwin-x64"
      sha256 "631a10ceadcba8f09d74107a6ddf199a6282455a8a05626d9fff53673b0fe492"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791590492-ge25e83/amp-linux-arm64"
      sha256 "d040345603a647fd2f01ebccd8ca6d697abcaa7ba55dae0f20b866cf606ef7ef"
    else
      url "https://static.ampcode.com/cli/0.0.1791590492-ge25e83/amp-linux-x64"
      sha256 "a49094b63fd49576ecfb4cf149ab41cac5ce02edee33c4b66e4726e7cb8612e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
