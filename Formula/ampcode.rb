class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793764839-g19a5bc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793764839-g19a5bc/amp-darwin-arm64"
      sha256 "3b39057bdb476a9288f7b71527ec27a0e8d26be18504606d4a99e35ecc5ffaed"
    else
      url "https://static.ampcode.com/cli/0.0.1793764839-g19a5bc/amp-darwin-x64"
      sha256 "20606cbf7ee0ee2d0c42cf0a3ad6725397c89a310dbbc8da6cf4d80d7e7bd005"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793764839-g19a5bc/amp-linux-arm64"
      sha256 "f32fd186bbc9f9946726141dfce7e2cf4bc973110ba1e55f340066b8327e2a5b"
    else
      url "https://static.ampcode.com/cli/0.0.1793764839-g19a5bc/amp-linux-x64"
      sha256 "e759c4f3f873bb5efa49daa699859afaf380b15b73bd75bf62d23512d1f8bb95"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
