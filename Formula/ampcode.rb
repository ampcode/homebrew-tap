class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789639648-g3c529d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789639648-g3c529d/amp-darwin-arm64"
      sha256 "56d8cf8abd5888c8b9870903424879be63ed121139ec4eafbd3170e25fb54cb6"
    else
      url "https://static.ampcode.com/cli/0.0.1789639648-g3c529d/amp-darwin-x64"
      sha256 "ae88070fb56db21e0f11205b0b342b61d7ebe24885f1f11f18d22d748868bd45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789639648-g3c529d/amp-linux-arm64"
      sha256 "e86bef9f9a0cd842c1575ee2111e8129b591673b557fe131759bc6a68eb29871"
    else
      url "https://static.ampcode.com/cli/0.0.1789639648-g3c529d/amp-linux-x64"
      sha256 "8a27196a548acee2f32357d8de78713865464a9d1415e50b97061903919dcbe5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
