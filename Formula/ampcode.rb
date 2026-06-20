class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781941194-g2385c0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781941194-g2385c0/amp-darwin-arm64"
      sha256 "67cbec4475a287d526b55735f7ed484b23f10f2200d3fceb4d843125680c489d"
    else
      url "https://static.ampcode.com/cli/0.0.1781941194-g2385c0/amp-darwin-x64"
      sha256 "e48d0513d63f837382e235e9806b5486566695382d9adb71ca746424414065f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781941194-g2385c0/amp-linux-arm64"
      sha256 "4aaf6e3d940869a93ca2e24e749ff29a78324ff5c2a676e163534140a57fdeb9"
    else
      url "https://static.ampcode.com/cli/0.0.1781941194-g2385c0/amp-linux-x64"
      sha256 "b8d48f36c13772f3a48071d6c1ac96817be5e82fc7e46c647d218bdd3ef01ca9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
