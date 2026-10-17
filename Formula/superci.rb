# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.13.tgz"
      sha256 "c0ef7a5d768a443b57d3391d5af8f5e834cae596967546cc60dd0abdabc504e0"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.13.tgz"
      sha256 "b41ba5ef8cc1eef7457cc1eefb6d062d46daf6f6e199a128124b756b07c911e3"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.13.tgz"
      sha256 "30278cab63ecb1854b7baceae809a40076af0c2be5d06fa4769aebaac1e8dd9e"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.13.tgz"
      sha256 "7bc5de9bd746037fd13404b30c2b0ce84e4c1af111d18afde3d64c30d9481932"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
