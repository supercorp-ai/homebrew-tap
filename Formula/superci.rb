# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.19.14.tgz"
      sha256 "de3eff858c1d6f0420707af2b9aa3ecca281b7773be080851a14d8450224e559"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.19.14.tgz"
      sha256 "a1e999cd4800c50608593a158ad8af8c95564fe7576af043d9049dbe161e2ef3"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.19.14.tgz"
      sha256 "fc8f77da6c0cc601a073e749e469345dba14ebff3625c2fe2e1031a97035ab52"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.19.14.tgz"
      sha256 "d1bda99b626b38a0e0c9f7e82c81a95c938dd3ab5eacefec8c10257009e0ee93"
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
