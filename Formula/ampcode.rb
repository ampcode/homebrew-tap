class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778045571-g20040b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778045571-g20040b/amp-darwin-arm64"
      sha256 "9f42d06627b00be73a1fe7f0be942259873ede4a6add740b4d8626d9eec4dc88"
    else
      url "https://static.ampcode.com/cli/0.0.1778045571-g20040b/amp-darwin-x64"
      sha256 "84f7a09d3c8c6742c138c2506b784f7203470a24f1882adf8a6428a750b4841b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778045571-g20040b/amp-linux-arm64"
      sha256 "8bc429223b9a58672fa93b49e828f81db67ac7a218aa21575486212e3f113d01"
    else
      url "https://static.ampcode.com/cli/0.0.1778045571-g20040b/amp-linux-x64"
      sha256 "a6bf590bab1de45a173139af0c337c324e515cf6c17a5a97077ce807c37c302c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
