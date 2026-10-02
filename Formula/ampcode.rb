class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790956876-gdb1f2f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790956876-gdb1f2f/amp-darwin-arm64"
      sha256 "fc8808b66bdc5cae97c2bcf5593b42fc8e12909d6dd89a7ef38fcf96d56d382f"
    else
      url "https://static.ampcode.com/cli/0.0.1790956876-gdb1f2f/amp-darwin-x64"
      sha256 "3bdb7eea5bed0e240d2792995064c3dcc9be89288f7930be66c3471bd72c8437"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790956876-gdb1f2f/amp-linux-arm64"
      sha256 "a566d14b5ae0358a2dc760178208cfcdc5330b308c53bb5321a7938fdc164ece"
    else
      url "https://static.ampcode.com/cli/0.0.1790956876-gdb1f2f/amp-linux-x64"
      sha256 "377fd25adf50b9fe738f41da67d7201b6438078c6002453968d54353d1ed3768"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
