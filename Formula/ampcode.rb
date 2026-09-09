class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788940851-g2b0940"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788940851-g2b0940/amp-darwin-arm64"
      sha256 "9a5c40273932504648baae9d7ee22c025a031cd5c9fb92577438d93670c16c28"
    else
      url "https://static.ampcode.com/cli/0.0.1788940851-g2b0940/amp-darwin-x64"
      sha256 "5e441c6bcf8ef3f04cdb892e8cbd9056c555a72f2c9c02c3594f92f2b7811e23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788940851-g2b0940/amp-linux-arm64"
      sha256 "6c94502d13c1b4c678cf392657422ab753c64b9c1dacc1624caace9032f1b3e9"
    else
      url "https://static.ampcode.com/cli/0.0.1788940851-g2b0940/amp-linux-x64"
      sha256 "b41a8e3c28f6dd94eed0ffdaa4dda86492bffc75f90e615ba58bad9b4572a9c1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
