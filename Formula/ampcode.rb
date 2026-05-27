class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779896748-g596c49"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779896748-g596c49/amp-darwin-arm64"
      sha256 "b89c846013e4cdda7be7ee1818052f46fb82ac5a0dd6cd7332e20d7310180c5a"
    else
      url "https://static.ampcode.com/cli/0.0.1779896748-g596c49/amp-darwin-x64"
      sha256 "f431999db40ff49d805cfd64e6cfc35893929b126b5032db79bc5c04cb75692e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779896748-g596c49/amp-linux-arm64"
      sha256 "ef6e57fed56dd8b400ae17bb2abf579b44d6a38e311adc4233e1d5f87a42a029"
    else
      url "https://static.ampcode.com/cli/0.0.1779896748-g596c49/amp-linux-x64"
      sha256 "ea39f1e508073556a1b919a0e01d6012f9f91fcf0f042816a0633785e37bba7c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
